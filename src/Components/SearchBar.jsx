import { React, useState } from "react";
import { SearchIcon } from "./Icons/Search";

const SearchBar = () => {
  const [iconVisible, setIconVisible] = useState(true);

  return (
    <div className="bg-gray-100 p-2 rounded-lg text-gray-400 font-light flex w-64 items-center justify-start">
      <SearchIcon size="4" />
      <input
        type="text"
        className="mx-2 placeholder:font-light text-black bg-transparent outline-none"
        placeholder="Search"
        // onFocusCapture={() => setIconVisible(false)}
      ></input>
    </div>
  );
};

export default SearchBar;
