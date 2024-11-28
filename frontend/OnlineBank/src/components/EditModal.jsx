import { useEffect, useState } from 'react';

const EditModal = ({ isOpen ,openModal,entity }) => {
    const [open, setOpen] = useState(isOpen);
    const [updatedEntity,updateEntity] = useState(entity);

  // Use effect to update modal open state whenever isOpen prop changes
  useEffect(() => {
    setOpen(isOpen);
  }, [isOpen]);

  function close(status)
  {
    setOpen(status);
    openModal(status);
  }
  return (
    <div>
      <input 
        className="modal-state" 
        id="modal-1" 
        type="checkbox" 
        checked={open} // Use the `open` state to control checkbox
        readOnly 
      />
      <div className="modal">
        <label className="modal-overlay" htmlFor="modal-1"></label>
        <div className="modal-content flex w-full flex-col gap-5 p-7">
          <label htmlFor="modal-1" className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2" onClick={()=>close(false)}>✕</label>
          <div className="flex flex-col gap-2">
            <h2 className="text-center text-2xl font-semibold">Edit Student</h2>
          </div>

          <section>

            <div className="form-group">
              <div className="form-field">
                <label className="form-label">Email address</label>
                <input placeholder="Type here" type="email" className="input max-w-full" />
                <label className="form-label">
                  <span className="form-label-alt">Please enter a valid email.</span>
                </label>
              </div>

              <div className="form-field">
                <label className="form-label">
                  <span>Password</span>
                </label>
                <div className="form-control">
                  <input placeholder="Type here" type="password" className="input max-w-full" />
                </div>
              </div>

              <div className="form-field">
                <div className="form-control justify-between">
                  <div>
                    <input type="checkbox" className="checkbox" />
                    <a href="#">Remember me</a>
                  </div>
                  <label className="form-label">
                    <a className="link link-underline-hover link-primary text-sm">Forgot your password?</a>
                  </label>
                </div>
              </div>

              <div className="form-field pt-5">
                <div className="form-control justify-between">
                  <button type="button" className="btn btn-primary w-full">Edit</button>
                </div>
              </div>
            </div>
            
          </section>
        </div>
      </div>
    </div>
  );
};

export default EditModal;
