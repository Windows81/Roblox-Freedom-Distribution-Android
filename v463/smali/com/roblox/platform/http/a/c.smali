.class public Lcom/roblox/platform/http/a/c;
.super Le/c$a;
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

    .line 28
    invoke-direct {p0}, Le/c$a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/roblox/platform/http/a/c;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Lcom/roblox/platform/http/a/c;
    .locals 3

    .line 25
    new-instance v0, Lcom/roblox/platform/http/a/c;

    new-instance v1, Lcom/roblox/platform/http/a/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/platform/http/a/c$a;-><init>(Lcom/roblox/platform/http/a/c$1;)V

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/a/c;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/platform/http/a/c;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/platform/http/a/c;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Le/m;)Le/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Le/m;",
            ")",
            "Le/c<",
            "*>;"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lcom/roblox/platform/http/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Le/b;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 37
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p2, p1}, Lcom/roblox/platform/http/a/c;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/roblox/platform/http/a/c$1;

    invoke-direct {p2, p0, p1}, Lcom/roblox/platform/http/a/c$1;-><init>(Lcom/roblox/platform/http/a/c;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
