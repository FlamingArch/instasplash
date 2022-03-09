import { useState } from "react";
import TopBar from "./Components/TopBar";
import Logo from "./Components/Logo";
import SearchBar from "./Components/SearchBar";

function App() {
  const [count, setCount] = useState(0);

  return (
    <div className="App bg-gray-100 w-screen h-screen">
      <TopBar>
        <Logo />
        <SearchBar />
        <div className="flex">Actions go here</div>
      </TopBar>
    </div>
  );
}

export default App;
