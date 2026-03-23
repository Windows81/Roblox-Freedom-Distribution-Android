.class public Lcom/roblox/client/purchase/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/h$b;,
        Lcom/roblox/client/purchase/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/http/f;

.field private b:Lcom/roblox/client/s/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/http/f;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/roblox/client/purchase/h;->a:Lcom/roblox/client/http/f;

    .line 32
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/purchase/h;->b:Lcom/roblox/client/s/f;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/h;)Lcom/roblox/client/s/f;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/roblox/client/purchase/h;->b:Lcom/roblox/client/s/f;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;Lcom/roblox/client/purchase/h$b;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/roblox/client/purchase/h$1;

    invoke-direct {v0, p0, p3}, Lcom/roblox/client/purchase/h$1;-><init>(Lcom/roblox/client/purchase/h;Lcom/roblox/client/purchase/h$b;)V

    .line 84
    iget-object p3, p0, Lcom/roblox/client/purchase/h;->a:Lcom/roblox/client/http/f;

    const/4 v1, 0x0

    invoke-interface {p3, p1, p2, v1, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    .line 87
    iget-object p1, p0, Lcom/roblox/client/purchase/h;->b:Lcom/roblox/client/s/f;

    invoke-virtual {p1}, Lcom/roblox/client/s/f;->p()V

    return-void
.end method
