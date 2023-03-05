import { useState } from "react";
import SearchIcon from '@mui/icons-material/Search';
import CloseIcon from '@mui/icons-material/Close';
import { build_activity_list } from './utils';

const SearchBar = ({data, filterTripsFunc}) => {
    const [searchInput, setSearchInput] = useState('')

    const handleFilter = (event) => {
        const searchInput = event.target.value;
        setSearchInput(searchInput);

        const filter = data.filter((item) => {
            const activity_list = build_activity_list(item.activities).join(', ');
            return (
                item.location.toLowerCase().includes(searchInput.toLowerCase()) ||
                item.name.toLowerCase().includes(searchInput.toLowerCase()) ||
                activity_list.toLowerCase().includes(searchInput.toLowerCase()) ||
                item.date.toLowerCase().includes(searchInput.toLowerCase()) ||
                item.description.toLowerCase().includes(searchInput.toLowerCase())
            )
        })

        if (searchInput === '') {
            filterTripsFunc(data);
        }else{
            filterTripsFunc(filter);
        }
    };

    const clearSearch = () => {
        setSearchInput('');
        filterTripsFunc(data);
    };

    return (
        <div className="inputField search_bar">
            <input 
            className="search_inputField"
                placeholder="Search by location, description, year, trip name, or activity..."
                value={searchInput}
                onChange={handleFilter}
            />
            <div className="search_icon">
                {searchInput.length === 0 
                    ? <SearchIcon />
                    : <CloseIcon onClick={() => clearSearch()}/>
                }        
            </div>     
        </div>
    );
}
 
export default SearchBar;