import Modal from 'react-bootstrap/Modal';

function ModalFunc(props) {

    const styles_header = props.styles_header;
    const styles_body = props.styles_body;

    const modal_width_class = props.modal_width_class;
    
  return (
    // <Modal {...props} dialogClassName="modal-width-control" aria-labelledby="contained-modal-title-vcenter">
    <Modal {...props} dialogClassName={modal_width_class} aria-labelledby="contained-modal-title-vcenter">
        <Modal.Header closeButton style={styles_header}/>
        <div className="modalData" style={styles_body}>
            {props.content}
        </div>
    </Modal>
  );
}
export default ModalFunc;

