import { useState } from "react";
import TopBar from "./Components/Base/TopBar";
import Logo from "./Components/Logo";
import SearchBar from "./Components/SearchBar";
import ItemCard from "./Components/ItemCard";

function App() {
  const [count, setCount] = useState(0);

  return (
    <div className="App bg-gray-100 min-h-screen w-screen text-sm">
      <TopBar>
        <Logo />
        <SearchBar />
        <div className="flex">Actions go here</div>
      </TopBar>
      <div className="flex flex-col p-24 place-items-center">
        <ItemCard />
        <ItemCard />
        <ItemCard />
      </div>
    </div>
  );
}

export default App;
