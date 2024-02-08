/** @format */

import { useState, useEffect } from "react";
export function useIsMounted() {
  const [isMounted, setIsmounted] = useState(false);
  useEffect(() => {
    setIsmounted(true);
  }, []);
  return isMounted;
}
