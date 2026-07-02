package d;

import b.ac;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Type[] f8162a = new Type[0];

    static Class<?> a(Type type) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(a(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return a(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    static boolean a(Type type, Type type2) {
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

    private static int a(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static int a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    static String b(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    static Type b(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return a(type, cls, a(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    static Type a(Type type, Class<?> cls, Type type2) {
        Type typeA;
        TypeVariable typeVariable;
        do {
            Type type3 = type2;
            if (!(type3 instanceof TypeVariable)) {
                if ((type3 instanceof Class) && ((Class) type3).isArray()) {
                    Class cls2 = (Class) type3;
                    Class<?> componentType = cls2.getComponentType();
                    Type typeA2 = a(type, cls, (Type) componentType);
                    return componentType != typeA2 ? new a(typeA2) : cls2;
                }
                if (type3 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type3;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type typeA3 = a(type, cls, genericComponentType);
                    return genericComponentType != typeA3 ? new a(typeA3) : genericArrayType;
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
                        return new b(typeA4, parameterizedType.getRawType(), typeArr);
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
                            return new c(new Type[]{Object.class}, new Type[]{typeA6});
                        }
                        return wildcardType;
                    }
                    if (upperBounds.length == 1 && (typeA = a(type, cls, upperBounds[0])) != upperBounds[0]) {
                        return new c(new Type[]{typeA}, f8162a);
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

    private static Type a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
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

    private static Class<?> a(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static void c(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    static boolean a(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    static ac a(ac acVar) throws IOException {
        c.c cVar = new c.c();
        acVar.d().a(cVar);
        return ac.a(acVar.a(), acVar.b(), cVar);
    }

    static <T> void a(Class<T> cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        if (cls.getInterfaces().length > 0) {
            throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
        }
    }

    static Type a(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i < 0 || i >= actualTypeArguments.length) {
            throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
        }
        Type type = actualTypeArguments[i];
        if (type instanceof WildcardType) {
            return ((WildcardType) type).getUpperBounds()[0];
        }
        return type;
    }

    static boolean d(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (d(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return d(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof TypeVariable) && !(type instanceof WildcardType)) {
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
        }
        return true;
    }

    static Type e(Type type) {
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        }
        return a(0, (ParameterizedType) type);
    }

    private static final class b implements ParameterizedType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f8164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type f8165b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Type[] f8166c;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            this.f8164a = type;
            this.f8165b = type2;
            this.f8166c = (Type[]) typeArr.clone();
            for (Type type3 : this.f8166c) {
                if (type3 == null) {
                    throw new NullPointerException();
                }
                o.c(type3);
            }
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f8166c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f8165b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f8164a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && o.a((Type) this, (Type) obj);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.f8166c) ^ this.f8165b.hashCode()) ^ o.a((Object) this.f8164a);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((this.f8166c.length + 1) * 30);
            sb.append(o.b(this.f8165b));
            if (this.f8166c.length == 0) {
                return sb.toString();
            }
            sb.append("<").append(o.b(this.f8166c[0]));
            for (int i = 1; i < this.f8166c.length; i++) {
                sb.append(", ").append(o.b(this.f8166c[i]));
            }
            return sb.append(">").toString();
        }
    }

    private static final class a implements GenericArrayType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f8163a;

        public a(Type type) {
            this.f8163a = type;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f8163a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && o.a((Type) this, (Type) obj);
        }

        public int hashCode() {
            return this.f8163a.hashCode();
        }

        public String toString() {
            return o.b(this.f8163a) + "[]";
        }
    }

    private static final class c implements WildcardType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f8167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type f8168b;

        public c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length == 1) {
                if (typeArr2[0] == null) {
                    throw new NullPointerException();
                }
                o.c(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    throw new IllegalArgumentException();
                }
                this.f8168b = typeArr2[0];
                this.f8167a = Object.class;
                return;
            }
            if (typeArr[0] == null) {
                throw new NullPointerException();
            }
            o.c(typeArr[0]);
            this.f8168b = null;
            this.f8167a = typeArr[0];
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f8167a};
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return this.f8168b != null ? new Type[]{this.f8168b} : o.f8162a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && o.a((Type) this, (Type) obj);
        }

        public int hashCode() {
            return (this.f8168b != null ? this.f8168b.hashCode() + 31 : 1) ^ (this.f8167a.hashCode() + 31);
        }

        public String toString() {
            return this.f8168b != null ? "? super " + o.b(this.f8168b) : this.f8167a == Object.class ? "?" : "? extends " + o.b(this.f8167a);
        }
    }
}
