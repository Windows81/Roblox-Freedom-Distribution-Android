.class public Lcom/roblox/platform/http/a/c;
.super Ld/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/http/a/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ld/c$a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/roblox/platform/http/a/c;->a:Ljava/util/concurrent/Executor;

    .line 30
    return-void
.end method

.method public static a()Lcom/roblox/platform/http/a/c;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/roblox/platform/http/a/c;

    new-instance v1, Lcom/roblox/platform/http/a/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/platform/http/a/c$a;-><init>(Lcom/roblox/platform/http/a/c$1;)V

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/a/c;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/platform/http/a/c;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/platform/http/a/c;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/m;",
            ")",
            "Ld/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/roblox/platform/http/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ld/b;

    if-eq v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lcom/roblox/platform/http/a/c;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 38
    new-instance v0, Lcom/roblox/platform/http/a/c$1;

    invoke-direct {v0, p0, v1}, Lcom/roblox/platform/http/a/c$1;-><init>(Lcom/roblox/platform/http/a/c;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
