.class public Lcom/roblox/client/purchase/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/a$b;,
        Lcom/roblox/client/purchase/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/http/f;

.field private b:Lcom/roblox/client/i/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/http/f;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/roblox/client/purchase/a;->a:Lcom/roblox/client/http/f;

    .line 41
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/purchase/a;->b:Lcom/roblox/client/i/f;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/a;)Lcom/roblox/client/i/f;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/roblox/client/purchase/a;->b:Lcom/roblox/client/i/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/a$b;)V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/roblox/client/http/post/RobuxPurchaseProductRequestBody;

    invoke-direct {v0, p2, p3}, Lcom/roblox/client/http/post/RobuxPurchaseProductRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/roblox/client/purchase/a$1;

    invoke-direct {v1, p0, p4}, Lcom/roblox/client/purchase/a$1;-><init>(Lcom/roblox/client/purchase/a;Lcom/roblox/client/purchase/a$b;)V

    .line 117
    iget-object v2, p0, Lcom/roblox/client/purchase/a;->a:Lcom/roblox/client/http/f;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v3, v1}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 120
    iget-object v0, p0, Lcom/roblox/client/purchase/a;->b:Lcom/roblox/client/i/f;

    invoke-virtual {v0}, Lcom/roblox/client/i/f;->d()V

    .line 121
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/a$b;)V
    .locals 7

    .prologue
    .line 128
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Get balance."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v6

    new-instance v0, Lcom/roblox/client/purchase/a$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/purchase/a$2;-><init>(Lcom/roblox/client/purchase/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/a$b;)V

    iget-object v1, p0, Lcom/roblox/client/purchase/a;->a:Lcom/roblox/client/http/f;

    invoke-virtual {v6, v0, v1}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h$a;Lcom/roblox/client/http/f;)V

    .line 142
    return-void
.end method
