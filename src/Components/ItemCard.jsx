import React from "react";

import Card from "./Base/Card";
import IconButton from "./Base/IconButton";
import Button from "./Base/Button";

import HeartIcon from "./Icons/Heart";

const ItemCard = () => {
  return (
    <div className="m-4">
      <Card>
        <div
          className="grid place-content-center p-4"
          style={{ gridTemplateColumns: "auto 1fr auto" }}
        >
          <img
            style={{ border: "1px solid #cccccc" }}
            src="https://source.unsplash.com/random"
            alt=""
            className="w-10 h-10 rounded-full"
          />
          <div className="flex flex-col px-4">
            <p className="font-bold">name</p>
            <p className="">username</p>
          </div>
        </div>
        <img src="https://source.unsplash.com/random" alt="" />
        <div className="flex justify-between p-3">
          <div className="flex">
            <IconButton>
              <HeartIcon size="4" />
            </IconButton>
            <IconButton>
              <HeartIcon size="4" />
            </IconButton>
            <IconButton>
              <HeartIcon size="4" />
            </IconButton>
          </div>
          <div className="flex">
            <IconButton>
              <HeartIcon size="4" />
            </IconButton>
          </div>
        </div>
        <div className="px-4 pb-2">
          <p className="font-bold">69 likes</p>
        </div>
        <div className="px-4 flex">
          <p className="font-bold pr-1">__username_</p>
          {["sample", "hashtags", "sup"].map((item) => (
            <p className="text-blue-900 pl-1">{`#${item}`}</p>
          ))}
        </div>
        <div className="px-4 pb-4">
          <p className="text-gray-500">View 1 comment</p>
          <p className="text-gray-500 mt-2 text-xs">
            {"3 Hours ago".toUpperCase()}
          </p>
        </div>
        <div
          style={{ borderTop: "1px solid #dedede" }}
          className="px-4 py-2 flex"
        >
          <IconButton>
            <HeartIcon size="4" />
          </IconButton>
          <input
            className="px-4 outline-none w-full"
            type="text"
            placeholder="Add a comment"
          />
          <Button>Post</Button>
        </div>
      </Card>
    </div>
  );
};

export default ItemCard;
