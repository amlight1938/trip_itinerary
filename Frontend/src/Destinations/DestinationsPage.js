import CallApiTripList from "./CallApiTripList";

const DestinationsPage = () => {
    const api_url = 'http://localhost:3001/api/v1/trips'
    
    return (
        <>
        <CallApiTripList api_url={api_url}/>
        </>
    );
}
 
export default DestinationsPage;