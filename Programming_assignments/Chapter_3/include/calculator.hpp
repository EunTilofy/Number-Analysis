/**********************************************************************
 * Ver 2.0 updated on Dec. 22nd, 2023, by EunTilofy
 * some calculators tools to make calculation easy!
 * 1. In Ver 2.0, 
 * [ADDED] evenspace() to get linear evenly spaced points of the given interval;
 * [ADDED] get_map_list() to get a vector of values according to input.
 * [ADDED] To_string() : to convert a number to string more precisely.
 * [ADDED] Self-adaptive Simpson integral.
 * not implemented yet, to be continue ...
***********************************************************************/
#ifndef _CALCULATOR_H_
#define _CALCULATOR_H_

template<class Type>
Type sq(Type x) {return x*x;}
template<class Type>
Type pw3(Type x) {return x*x*x;}
template<class Type>
Type pw4(Type x) {return x*x*x*x;}

#define SETPRECISION 10
#include <bits/stdc++.h>

// custom_assert
void custom_assert(bool condition, const std::string& error_message) {
    if (!condition) {
        std::cerr << "Assertion failed: " << error_message << std::endl;
        std::terminate(); // Terminate the program
    }
}

// random number
std::mt19937 seed(std::random_device{}());
template <class Type> Type rand_real(const Type& l, const Type& r) {
    std::uniform_real_distribution<Type> nd(l, r);
    return nd(seed);
}
template <class Type> Type rand_int(const Type& l, const Type& r) {
    std::uniform_int_distribution<Type> nd(l, r);
    return nd(seed);
}

namespace norm {
    // norm of a vector
    template<class Type>
    double Norm2Vec(const Type& x) {
        double r = 0; int M = 0;
        for(auto &y : x) r += fabs(y * y), ++M;
        r /= M;
        return sqrt(r);
    }
    template<class Type>
    double Norm1Vec(const Type& x) {
        double r = 0;
        for(auto y : x) r += fabs(y);
        return r;
    }
    template<class Type>
    double NormiVec(const Type& x) {
        double r = 0;
        for(auto y : x) {
            r = max(r, fabs(y));
        }
        return r;
    }

    // norm of a matrix
    template<class Type>
    double NormiMat(const Type& x) {
        double r = 0;
        for(auto y : x) {
            r += NormiVec(y);
        }
        return r;
    }
    template<class Type>
    double Norm1Mat(const Type& x) {
        return NormiMat(~x);
    }
    // @TODO : 2-norm, need SVD

    // norm of a number
    template<class Type>
    Type Norm(const Type &x) {
        return fabs(x);
    }
}

// linear evenly space
template<class Type>
std::vector<Type> evenspace(Type l, Type r, int num) {
    Type d = (r - l) / (num - 1);
    std::vector<Type> ret(num);
    for(int i = 0; i < num; ++i) ret[i] = l + d * i;
    return ret;
}

// get map list : xi -> F(xi)
template<class Map, class Type>
std::vector<Type> get_map_list(const Map& F, std::vector<Type>& X) {
    std::vector<Type> Y(X.size());
    for(int i = 0; i < X.size(); ++i) Y[i] = F(X[i]);
    return Y;
}

// To_string 
template<class Type> 
std::string To_string(const Type& x) {
    static int precision = 16;
    std::ostringstream o;
    if(std::floor(x) == x) {
        o << x;
    } else {
        int exponent = 0;
        if (std::abs(x) >= 1.0) {
            exponent = static_cast<int>(std::floor(std::log10(std::abs(x))));
        }
        int decimalDigits = precision - 1 - exponent;
        o << std::scientific << std::setprecision(precision) << x;
    }
    return o.str();
}

// (l, r) Simpson integral
template <class Map, class Type> 
Type IS(const Map& f, const Type& l, const Type& r) {
	return (r-l)*(f(l)+4*f((l+r)/2)+f(r))/6;
}
// Self-adaptive Simpson integral
template <class Map, class Type>
Type Simpson(const Map& f, const Type& l, const Type& r) {
	Type mid = (l+r)/2, s = IS(f, l, r), t = IS(f, l, mid) + IS(f, mid, r);
	if(fabs(s-t) < 1e-12) return s;
	return Simpson(f, l, mid) + Simpson(f, mid, r);
}

#endif