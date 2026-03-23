.class public final Ld/a/a/a;
.super Ld/e$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/e;


# direct methods
.method private constructor <init>(Lcom/google/gson/e;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ld/e$a;-><init>()V

    .line 56
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Ld/a/a/a;->a:Lcom/google/gson/e;

    .line 58
    return-void
.end method

.method public static a()Ld/a/a/a;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-static {v0}, Ld/a/a/a;->a(Lcom/google/gson/e;)Ld/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/gson/e;)Ld/a/a/a;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ld/a/a/a;

    invoke-direct {v0, p0}, Ld/a/a/a;-><init>(Lcom/google/gson/e;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/e",
            "<",
            "Lb/ac;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ld/a/a/a;->a:Lcom/google/gson/e;

    invoke-static {p1}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    .line 64
    new-instance v1, Ld/a/a/c;

    iget-object v2, p0, Ld/a/a/a;->a:Lcom/google/gson/e;

    invoke-direct {v1, v2, v0}, Ld/a/a/c;-><init>(Lcom/google/gson/e;Lcom/google/gson/v;)V

    return-object v1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/e",
            "<*",
            "Lb/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Ld/a/a/a;->a:Lcom/google/gson/e;

    invoke-static {p1}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    .line 71
    new-instance v1, Ld/a/a/b;

    iget-object v2, p0, Ld/a/a/a;->a:Lcom/google/gson/e;

    invoke-direct {v1, v2, v0}, Ld/a/a/b;-><init>(Lcom/google/gson/e;Lcom/google/gson/v;)V

    return-object v1
.end method
