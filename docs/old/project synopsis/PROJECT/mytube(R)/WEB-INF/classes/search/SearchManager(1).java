
import java.io.*;

import org.apache.lucene.index.FilterIndexReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.Searcher;
import org.apache.lucene.search.TopDocCollector;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.*;
public class SearchManager {
	static final File INDEX_DIR = new File("index");
	public static void createIndex (String docPath)
	{

		    final File docDir = new File(docPath);
		    if (!docDir.exists() || !docDir.canRead()) {
		      System.out.println("Document directory '" +docDir.getAbsolutePath()+ "' does not exist or is not readable, please check the path");
		      System.exit(1);
		    }
		    
		    try {
		      IndexWriter writer = new IndexWriter(INDEX_DIR, new StandardAnalyzer(), true, IndexWriter.MaxFieldLength.LIMITED);
		      System.out.println("Indexing to directory '" +INDEX_DIR+ "'...");
		      indexDocs(writer, docDir);
		      System.out.println("Optimizing...");
		      writer.optimize();
		      writer.close();

		      System.out.println("index created and optimized");

		    } catch (IOException e) {
		      System.out.println(" caught a " + e.getClass() +
		       "\n with message: " + e.getMessage());
		    }
	
		
	}
	static void indexDocs(IndexWriter writer, File file)
    throws IOException {
    // do not try to index files that cannot be read
    if (file.canRead()) {
      if (file.isDirectory()) {
        String[] files = file.list();
        // an IO error could occur
        if (files != null) {
          for (int i = 0; i < files.length; i++) {
            indexDocs(writer, new File(file, files[i]));
          }
        }
      } else {
        System.out.println("adding " + file);
        try {
          writer.addDocument(Document(file));
        }
        // at least on windows, some temporary files raise this exception with an "access denied" message
        // checking if the file can be read doesn't help
        catch (FileNotFoundException fnfe) {
          ;
        }
      }
    }
	} 
	
	public static Document Document(File f)
    throws java.io.FileNotFoundException {
	 
 // make a new, empty document
 Document doc = new Document();

 // Add the path of the file as a field named "path".  Use a field that is 
 // indexed (i.e. searchable), but don't tokenize the field into words.
 doc.add(new Field("path", f.getPath(), Field.Store.YES, Field.Index.NOT_ANALYZED));

 // Add the last modified date of the file a field named "modified".  Use 
 // a field that is indexed (i.e. searchable), but don't tokenize the field
 // into words.
 doc.add(new Field("modified",
     DateTools.timeToString(f.lastModified(), DateTools.Resolution.MINUTE),
     Field.Store.YES, Field.Index.NOT_ANALYZED));

 // Add the contents of the file to a field named "contents".  Specify a Reader,
 // so that the text of the file is tokenized and indexed, but not stored.
 // Note that FileReader expects the file to be in the system's default encoding.
 // If that's not the case searching for special characters will fail.
 doc.add(new Field("contents", new FileReader(f)));

 // return the document
 return doc;
}
public static void addDocumentToIndex(String docPath)
{
	try {
		if (!INDEX_DIR.exists()) {
		createIndex("posts");     
		}
		else
		{
	      IndexWriter writer = new IndexWriter(INDEX_DIR, new StandardAnalyzer(), false, IndexWriter.MaxFieldLength.LIMITED);
	      System.out.println("Indexing to directory '" +INDEX_DIR+ "'...");
	      File file=new File(docPath);
	      writer.addDocument(Document(file));
	        
	      System.out.println("Optimizing...");
	      writer.optimize();
	      writer.close();

	      System.out.println("index updated and optimized");
		}
	    } catch (IOException e) {
	      System.out.println(" caught a " + e.getClass() +
	       "\n with message: " + e.getMessage());
	    }
	
}
	private static class OneNormsReader extends FilterIndexReader {
	    private String field;

	    public OneNormsReader(IndexReader in, String field) {
	      super(in);
	      this.field = field;
	    }

	    public byte[] norms(String field) throws IOException {
	      return in.norms(this.field);
	    }
	  }

	
	public static String[]  search (String searchTerm)
	{
		 String normsField = null;
		 String index = "index";
		    String field = "contents";
		    TopDocCollector collector=null;
		    String [] result=null;
		    try{
		    IndexReader reader = IndexReader.open(index);
 System.out.println("index opened");
		    if (normsField != null)
		      reader = new OneNormsReader(reader, normsField);
System.out.println("one norms reader created.");
		    Searcher searcher = new IndexSearcher(reader);
		    Analyzer analyzer = new StandardAnalyzer();
		    QueryParser parser = new QueryParser(field, analyzer);
		      Query query = parser.parse(searchTerm.trim());
		      System.out.println("Searching for: " + query.toString(field));
		      collector = new TopDocCollector(20);
		      searcher.search(query, collector);
		      ScoreDoc[] hits = collector.topDocs().scoreDocs;
		      result=new String[hits.length];
		      for (int i=0;i<hits.length;i++)
		      {
		      Document doc = searcher.doc(hits[i].doc);
		      result[i] = doc.get("path");
		       
		      }

		   }catch(Exception e)
		   {
			   System.out.println(e);
			   
		   }
		   return result;
	}
	
		
}
