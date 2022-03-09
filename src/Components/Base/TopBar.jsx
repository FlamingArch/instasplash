import React from "react";

const TopBar = (props) => {
  return (
    <div
      className="fixed w-screen h-16 bg-white flex items-center justify-between p-4"
      style={{ borderBottom: "1px solid #CCCCCC" }}
    >
      {props.children}
    </div>
  );
};

export default TopBar;
