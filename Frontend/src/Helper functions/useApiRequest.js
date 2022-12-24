import { useEffect } from "react";
import { useState } from "react";

const useApiRequest = (api_url) => {
    const [data, setData] = useState([]);
    const [isLoading, setIsLoading] = useState(true);
    const [errors, setErrors] = useState(null);

    useEffect(() => {
        fetch(api_url)
        .then(response => response.json())
        .then(api_package => {
            setData(api_package)
            setIsLoading(false)
        }).catch(err => {
            setIsLoading(false)
            setErrors(err)
        })
    }, [api_url]);

    return {data, isLoading, errors};
}
 
export default useApiRequest;