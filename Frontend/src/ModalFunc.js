import { ModalBody } from 'react-bootstrap';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';

function ModalFunc(props) {

    const styles_header = props.styles_header;
    const styles_body = props.styles_body;

  return (
    <Modal
    {...props}
    size="xxlg"
    aria-labelledby="contained-modal-title-vcenter"
    
    style={{height:"100%", width:"100%"}}
    >
        {props.content}
        {/* <Modal.Header style={styles_header} closeButton></Modal.Header>
        <ModalBody style={styles_body}>{props.content}</ModalBody> */}
      
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
