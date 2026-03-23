.class public Lcom/roblox/client/ad/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ad/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/roblox/client/http/m;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/roblox/client/http/m;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/roblox/client/ad/a;->b:Z

    .line 22
    iput-object p1, p0, Lcom/roblox/client/ad/a;->a:Lcom/roblox/client/http/m;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ad/a;)Lcom/roblox/client/http/m;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/roblox/client/ad/a;->a:Lcom/roblox/client/http/m;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/roblox/client/ad/a;->b:Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 30
    invoke-static {}, Lcom/roblox/client/http/g;->a()Lcom/roblox/client/http/f;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/roblox/client/u;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/ad/a$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/ad/a$1;-><init>(Lcom/roblox/client/ad/a;)V

    const/4 v3, 0x0

    .line 31
    invoke-interface {v0, v1, v3, v2}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 43
    iget-boolean v1, p0, Lcom/roblox/client/ad/a;->b:Z

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Lcom/roblox/client/ad/a$a;

    invoke-direct {v1, v3}, Lcom/roblox/client/ad/a$a;-><init>(Lcom/roblox/client/ad/a$1;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/c;->a(Lcom/roblox/client/http/a/d;)V

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    return-void
.end method
