import { ModalBody } from 'react-bootstrap';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import ModalDialog from 'react-bootstrap';

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



// return (
//     <>
//       <Button variant="primary" onClick={() => setModalShow(true)}>
//         Launch vertically centered modal
//       </Button>

//       <MyVerticallyCenteredModal
//         show={modalShow}
//         onHide={() => setModalShow(false)}
//       />
//     </>
//   );
