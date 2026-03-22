package com.google.ads.interactivemedia.v3.a.b;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Type[] f2660a = new Type[0];

    public static ParameterizedType a(Type type, Type type2, Type... typeArr) {
        return new C0056b(type, type2, typeArr);
    }

    public static GenericArrayType a(Type type) {
        return new a(type);
    }

    public static WildcardType b(Type type) {
        return new c(new Type[]{type}, f2660a);
    }

    public static WildcardType c(Type type) {
        return new c(new Type[]{Object.class}, new Type[]{type});
    }

    public static Type d(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new a(d(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C0056b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static Class<?> e(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            com.google.ads.interactivemedia.v3.a.b.a.a(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return e(((WildcardType) type).getUpperBounds()[0]);
        }
        String name = type == null ? "null" : type.getClass().getName();
        String strValueOf = String.valueOf("Expected a Class, ParameterizedType, or GenericArrayType, but <");
        String strValueOf2 = String.valueOf(type);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 13 + String.valueOf(strValueOf2).length() + String.valueOf(name).length()).append(strValueOf).append(strValueOf2).append("> is of type ").append(name).toString());
    }

    static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean a(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return a((Object) parameterizedType.getOwnerType(), (Object) parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static String f(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    static Type a(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == cls2) {
                        return cls.getGenericInterfaces()[i];
                    }
                    if (cls2.isAssignableFrom(interfaces[i])) {
                        return a(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                    }
                }
            }
            if (!cls.isInterface()) {
                while (cls != Object.class) {
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (superclass == cls2) {
                        return cls.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(superclass)) {
                        return a(cls.getGenericSuperclass(), (Class<?>) superclass, cls2);
                    }
                    cls = superclass;
                }
            }
            return cls2;
        }
        return type;
    }

    static Type b(Type type, Class<?> cls, Class<?> cls2) {
        com.google.ads.interactivemedia.v3.a.b.a.a(cls2.isAssignableFrom(cls));
        return a(type, cls, a(type, cls, cls2));
    }

    public static Type g(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return ((Class) type).getComponentType();
    }

    public static Type a(Type type, Class<?> cls) {
        Type typeB = b(type, cls, Collection.class);
        if (typeB instanceof WildcardType) {
            typeB = ((WildcardType) typeB).getUpperBounds()[0];
        }
        return typeB instanceof ParameterizedType ? ((ParameterizedType) typeB).getActualTypeArguments()[0] : Object.class;
    }

    public static Type[] b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type typeB = b(type, cls, Map.class);
        if (typeB instanceof ParameterizedType) {
            return ((ParameterizedType) typeB).getActualTypeArguments();
        }
        return new Type[]{Object.class, Object.class};
    }

    public static Type a(Type type, Class<?> cls, Type type2) {
        Type typeA;
        TypeVariable typeVariable;
        do {
            Type type3 = type2;
            if (!(type3 instanceof TypeVariable)) {
                if ((type3 instanceof Class) && ((Class) type3).isArray()) {
                    Class cls2 = (Class) type3;
                    Class<?> componentType = cls2.getComponentType();
                    Type typeA2 = a(type, cls, (Type) componentType);
                    if (componentType != typeA2) {
                        return a(typeA2);
                    }
                    return cls2;
                }
                if (type3 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type3;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type typeA3 = a(type, cls, genericComponentType);
                    if (genericComponentType != typeA3) {
                        return a(typeA3);
                    }
                    return genericArrayType;
                }
                if (type3 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type3;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type typeA4 = a(type, cls, ownerType);
                    boolean z = typeA4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    boolean z2 = z;
                    Type[] typeArr = actualTypeArguments;
                    for (int i = 0; i < length; i++) {
                        Type typeA5 = a(type, cls, typeArr[i]);
                        if (typeA5 != typeArr[i]) {
                            if (!z2) {
                                typeArr = (Type[]) typeArr.clone();
                                z2 = true;
                            }
                            typeArr[i] = typeA5;
                        }
                    }
                    if (z2) {
                        return a(typeA4, parameterizedType.getRawType(), typeArr);
                    }
                    return parameterizedType;
                }
                if (type3 instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type3;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type typeA6 = a(type, cls, lowerBounds[0]);
                        if (typeA6 != lowerBounds[0]) {
                            return c(typeA6);
                        }
                        return wildcardType;
                    }
                    if (upperBounds.length == 1 && (typeA = a(type, cls, upperBounds[0])) != upperBounds[0]) {
                        return b(typeA);
                    }
                    return wildcardType;
                }
                return type3;
            }
            typeVariable = (TypeVariable) type3;
            type2 = a(type, cls, (TypeVariable<?>) typeVariable);
        } while (type2 != typeVariable);
        return type2;
    }

    static Type a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> clsA = a(typeVariable);
        if (clsA != null) {
            Type typeA = a(type, cls, clsA);
            if (typeA instanceof ParameterizedType) {
                return ((ParameterizedType) typeA).getActualTypeArguments()[a((Object[]) clsA.getTypeParameters(), (Object) typeVariable)];
            }
            return typeVariable;
        }
        return typeVariable;
    }

    private static int a(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    private static Class<?> a(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(Type type) {
        com.google.ads.interactivemedia.v3.a.b.a.a(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    /* JADX INFO: renamed from: com.google.ads.interactivemedia.v3.a.b.b$b, reason: collision with other inner class name */
    private static final class C0056b implements Serializable, ParameterizedType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f2662a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type f2663b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Type[] f2664c;

        public C0056b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                com.google.ads.interactivemedia.v3.a.b.a.a(type != null || (Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null));
            }
            this.f2662a = type == null ? null : b.d(type);
            this.f2663b = b.d(type2);
            this.f2664c = (Type[]) typeArr.clone();
            for (int i = 0; i < this.f2664c.length; i++) {
                com.google.ads.interactivemedia.v3.a.b.a.a(this.f2664c[i]);
                b.i(this.f2664c[i]);
                this.f2664c[i] = b.d(this.f2664c[i]);
            }
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f2664c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f2663b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f2662a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && b.a((Type) this, (Type) obj);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.f2664c) ^ this.f2663b.hashCode()) ^ b.b((Object) this.f2662a);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((this.f2664c.length + 1) * 30);
            sb.append(b.f(this.f2663b));
            if (this.f2664c.length == 0) {
                return sb.toString();
            }
            sb.append("<").append(b.f(this.f2664c[0]));
            for (int i = 1; i < this.f2664c.length; i++) {
                sb.append(", ").append(b.f(this.f2664c[i]));
            }
            return sb.append(">").toString();
        }
    }

    private static final class a implements Serializable, GenericArrayType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f2661a;

        public a(Type type) {
            this.f2661a = b.d(type);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f2661a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && b.a((Type) this, (Type) obj);
        }

        public int hashCode() {
            return this.f2661a.hashCode();
        }

        public String toString() {
            return String.valueOf(b.f(this.f2661a)).concat("[]");
        }
    }

    private static final class c implements Serializable, WildcardType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f2665a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type f2666b;

        public c(Type[] typeArr, Type[] typeArr2) {
            com.google.ads.interactivemedia.v3.a.b.a.a(typeArr2.length <= 1);
            com.google.ads.interactivemedia.v3.a.b.a.a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                com.google.ads.interactivemedia.v3.a.b.a.a(typeArr2[0]);
                b.i(typeArr2[0]);
                com.google.ads.interactivemedia.v3.a.b.a.a(typeArr[0] == Object.class);
                this.f2666b = b.d(typeArr2[0]);
                this.f2665a = Object.class;
                return;
            }
            com.google.ads.interactivemedia.v3.a.b.a.a(typeArr[0]);
            b.i(typeArr[0]);
            this.f2666b = null;
            this.f2665a = b.d(typeArr[0]);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f2665a};
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return this.f2666b != null ? new Type[]{this.f2666b} : b.f2660a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && b.a((Type) this, (Type) obj);
        }

        public int hashCode() {
            return (this.f2666b != null ? this.f2666b.hashCode() + 31 : 1) ^ (this.f2665a.hashCode() + 31);
        }

        public String toString() {
            if (this.f2666b != null) {
                String strValueOf = String.valueOf(b.f(this.f2666b));
                return strValueOf.length() != 0 ? "? super ".concat(strValueOf) : new String("? super ");
            }
            if (this.f2665a == Object.class) {
                return "?";
            }
            String strValueOf2 = String.valueOf(b.f(this.f2665a));
            return strValueOf2.length() != 0 ? "? extends ".concat(strValueOf2) : new String("? extends ");
        }
    }
}
