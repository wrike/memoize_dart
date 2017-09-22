/// Checks 1 argument for equality with [==] operator and returns the cached
/// result if it was not changed.
R Function(A) memo1<A, R>(R Function(A) func) {
  A prevArg;
  R prevResult;
  bool isInitial = true;

  return ((A arg) {
    if (!isInitial && arg == prevArg) {
      return prevResult;
    } else {
      prevArg = arg;
      prevResult = func(arg);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 2 arguments for equality with [==] operator and returns the cached
/// result if they were not changed.
R Function(A, B) memo2<A, B, R>(R Function(A, B) func) {
  A prevArgA;
  B prevArgB;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB) {
    if (!isInitial && argA == prevArgA && argB == prevArgB) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevResult = func(argA, argB);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 3 arguments for equality with [==] operator and returns the cached
/// result if they were not changed.
R Function(A, B, C) memo3<A, B, C, R>(R Function(A, B, C) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevResult = func(argA, argB, argC);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 4 arguments for equality with [==] operator and returns the cached
/// result if they were not changed.
R Function(A, B, C, D) memo4<A, B, C, D, R>(R Function(A, B, C, D) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevResult = func(argA, argB, argC, argD);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 5 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
R Function(A, B, C, D, E) memo5<A, B, C, D, E, R>(R Function(A, B, C, D, E) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD &&
        argE == prevArgE) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevResult = func(argA, argB, argC, argD, argE);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 6 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
R Function(A, B, C, D, E, F) memo6<A, B, C, D, E, F, R>(
    R Function(A, B, C, D, E, F) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD &&
        argE == prevArgE &&
        argF == prevArgF) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevResult = func(argA, argB, argC, argD, argE, argF);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 7 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
R Function(A, B, C, D, E, F, G) memo7<A, B, C, D, E, F, G, R>(
    R Function(A, B, C, D, E, F, G) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD &&
        argE == prevArgE &&
        argF == prevArgF &&
        argG == prevArgG) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 8 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
R Function(A, B, C, D, E, F, G, H) memo8<A, B, C, D, E, F, G, H, R>(
    R Function(A, B, C, D, E, F, G, H) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  H prevArgH;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD &&
        argE == prevArgE &&
        argF == prevArgF &&
        argG == prevArgG &&
        argH == prevArgH) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG, argH);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 9 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
R Function(A, B, C, D, E, F, G, H, I) memo9<A, B, C, D, E, F, G, H, I, R>(
    R Function(A, B, C, D, E, F, G, H, I) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  H prevArgH;
  I prevArgI;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH,
      I argI) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD &&
        argE == prevArgE &&
        argF == prevArgF &&
        argG == prevArgG &&
        argH == prevArgH &&
        argI == prevArgI) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevArgI = argI;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG, argH, argI);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 10 arguments for equality with [==] operator and returns cached
/// result if it was not changed.
R Function(A, B, C, D, E, F, G, H, I, J) memo10<A, B, C, D, E, F, G, H, I, J, R>(
    R Function(A, B, C, D, E, F, G, H, I, J) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  H prevArgH;
  I prevArgI;
  J prevArgJ;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH,
      I argI, J argJ) {
    if (!isInitial &&
        argA == prevArgA &&
        argB == prevArgB &&
        argC == prevArgC &&
        argD == prevArgD &&
        argE == prevArgE &&
        argF == prevArgF &&
        argG == prevArgG &&
        argH == prevArgH &&
        argI == prevArgI &&
        argJ == prevArgJ) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevArgI = argI;
      prevArgJ = argJ;
      prevResult =
          func(argA, argB, argC, argD, argE, argF, argG, argH, argI, argJ);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 1 argument for equality with [identical] call and returns the cached
/// result if it was not changed.
R Function(A) imemo1<A, R>(R Function(A) func) {
  A prevArg;
  R prevResult;
  bool isInitial = true;

  return ((A arg) {
    if (!isInitial && identical(arg, prevArg)) {
      return prevResult;
    } else {
      prevArg = arg;
      prevResult = func(arg);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 2 arguments for equality with [identical] call and returns the cached
/// result if they were not changed.
R Function(A, B) imemo2<A, B, R>(R Function(A, B) func) {
  A prevArgA;
  B prevArgB;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB) {
    if (!isInitial && identical(argA, prevArgA) && identical(argB, prevArgB)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevResult = func(argA, argB);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 3 arguments for equality with [identical] call and returns the cached
/// result if they were not changed.
R Function(A, B, C) imemo3<A, B, C, R>(R Function(A, B, C) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevResult = func(argA, argB, argC);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 4 arguments for equality with [identical] call and returns the cached
/// result if they were not changed.
R Function(A, B, C, D) imemo4<A, B, C, D, R>(R Function(A, B, C, D) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevResult = func(argA, argB, argC, argD);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 5 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
R Function(A, B, C, D, E) imemo5<A, B, C, D, E, R>(R Function(A, B, C, D, E) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevResult = func(argA, argB, argC, argD, argE);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 6 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
R Function(A, B, C, D, E, F) imemo6<A, B, C, D, E, F, R>(
    R Function(A, B, C, D, E, F) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevResult = func(argA, argB, argC, argD, argE, argF);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 7 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
R Function(A, B, C, D, E, F, G) imemo7<A, B, C, D, E, F, G, R>(
    R Function(A, B, C, D, E, F, G) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 8 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
R Function(A, B, C, D, E, F, G, H) imemo8<A, B, C, D, E, F, G, H, R>(
    R Function(A, B, C, D, E, F, G, H) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  H prevArgH;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG) &&
        identical(argH, prevArgH)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG, argH);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 9 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
R Function(A, B, C, D, E, F, G, H, I) imemo9<A, B, C, D, E, F, G, H, I, R>(
    R Function(A, B, C, D, E, F, G, H, I) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  H prevArgH;
  I prevArgI;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH,
      I argI) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG) &&
        identical(argH, prevArgH) &&
        identical(argI, prevArgI)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevArgI = argI;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG, argH, argI);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 10 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
R Function(A, B, C, D, E, F, G, H, I, J)
    imemo10<A, B, C, D, E, F, G, H, I, J, R>(
        R Function(A, B, C, D, E, F, G, H, I, J) func) {
  A prevArgA;
  B prevArgB;
  C prevArgC;
  D prevArgD;
  E prevArgE;
  F prevArgF;
  G prevArgG;
  H prevArgH;
  I prevArgI;
  J prevArgJ;
  R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH,
      I argI, J argJ) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG) &&
        identical(argH, prevArgH) &&
        identical(argI, prevArgI) &&
        identical(argJ, prevArgJ)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevArgI = argI;
      prevArgJ = argJ;
      prevResult =
          func(argA, argB, argC, argD, argE, argF, argG, argH, argI, argJ);
      isInitial = false;

      return prevResult;
    }
  });
}
