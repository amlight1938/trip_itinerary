import Modal from 'react-bootstrap/Modal';

function ModalFunc(props) {

    const styles_header = props.styles_header;
    const styles_body = props.styles_body;

  return (
    <Modal {...props} dialogClassName="modal-width-control" aria-labelledby="contained-modal-title-vcenter">
        <Modal.Header closeButton style={styles_header}/>
        <div className="modalData">
            {props.content}
        </div>
        
    </Modal>
  );
}
export default ModalFunc;

