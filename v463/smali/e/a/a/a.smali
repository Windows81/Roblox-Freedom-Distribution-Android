.class public final Le/a/a/a;
.super Le/e$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method private constructor <init>(Lcom/google/gson/f;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Le/e$a;-><init>()V

    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Le/a/a/a;->a:Lcom/google/gson/f;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Le/a/a/a;
    .locals 1

    .line 42
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-static {v0}, Le/a/a/a;->a(Lcom/google/gson/f;)Le/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/gson/f;)Le/a/a/a;
    .locals 1

    .line 50
    new-instance v0, Le/a/a/a;

    invoke-direct {v0, p0}, Le/a/a/a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Le/m;)Le/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Le/m;",
            ")",
            "Le/e<",
            "Lc/ad;",
            "*>;"
        }
    .end annotation

    .line 63
    iget-object p2, p0, Le/a/a/a;->a:Lcom/google/gson/f;

    invoke-static {p1}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/f;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object p1

    .line 64
    new-instance p2, Le/a/a/c;

    iget-object p3, p0, Le/a/a/a;->a:Lcom/google/gson/f;

    invoke-direct {p2, p3, p1}, Le/a/a/c;-><init>(Lcom/google/gson/f;Lcom/google/gson/v;)V

    return-object p2
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Le/m;)Le/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Le/m;",
            ")",
            "Le/e<",
            "*",
            "Lc/ab;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p2, p0, Le/a/a/a;->a:Lcom/google/gson/f;

    invoke-static {p1}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/f;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object p1

    .line 71
    new-instance p2, Le/a/a/b;

    iget-object p3, p0, Le/a/a/a;->a:Lcom/google/gson/f;

    invoke-direct {p2, p3, p1}, Le/a/a/b;-><init>(Lcom/google/gson/f;Lcom/google/gson/v;)V

    return-object p2
.end method
