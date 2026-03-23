.class Lcom/roblox/client/login/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d;


# direct methods
.method private constructor <init>(Lcom/roblox/client/login/d;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/roblox/client/login/d$e;->a:Lcom/roblox/client/login/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/roblox/client/login/d$e;-><init>(Lcom/roblox/client/login/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getPostLoginRequestTimeout()I

    move-result v0

    .line 112
    new-instance v1, Lcom/roblox/client/h/c;

    invoke-static {}, Lcom/roblox/client/h/t;->n()Lcom/b/a/a/o;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/roblox/client/login/d$e$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/login/d$e$1;-><init>(Lcom/roblox/client/login/d$e;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/roblox/client/h/c;-><init>(Lcom/b/a/a/o;Ljava/lang/Integer;Lcom/roblox/client/h/c$a;)V

    .line 118
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 119
    return-void
.end method
