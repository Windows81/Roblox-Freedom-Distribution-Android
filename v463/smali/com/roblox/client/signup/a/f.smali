.class public abstract Lcom/roblox/client/signup/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/roblox/client/s/f;

.field protected b:Lcom/roblox/client/signup/a$h;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$h;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/roblox/client/signup/a/f;->a:Lcom/roblox/client/s/f;

    .line 18
    iput-object p2, p0, Lcom/roblox/client/signup/a/f;->b:Lcom/roblox/client/signup/a$h;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;
.end method

.method public abstract a(ILorg/json/JSONObject;)Ljava/lang/String;
.end method

.method protected a()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/roblox/client/signup/a/f;->b:Lcom/roblox/client/signup/a$h;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/signup/a$h;->b(Lcom/roblox/client/signup/a$e;Ljava/lang/Integer;)V

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/a/f;->b:Lcom/roblox/client/signup/a$h;

    sget-object v1, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/signup/a$h;->b(Lcom/roblox/client/signup/a$e;Ljava/lang/Integer;)V

    return-void
.end method
