.class public abstract Lcom/roblox/client/signup/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/roblox/client/s/f;

.field protected b:Lcom/roblox/client/signup/a$d;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/roblox/client/signup/a/e;->a:Lcom/roblox/client/s/f;

    .line 18
    iput-object p2, p0, Lcom/roblox/client/signup/a/e;->b:Lcom/roblox/client/signup/a$d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;
.end method

.method public abstract a(ILorg/json/JSONObject;)Ljava/lang/String;
.end method

.method protected a()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/roblox/client/signup/a/e;->b:Lcom/roblox/client/signup/a$d;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$d;->a()V

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/a/e;->b:Lcom/roblox/client/signup/a$d;

    sget-object v1, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/signup/a$d;->a(Lcom/roblox/client/signup/a$e;Ljava/lang/Integer;)V

    return-void
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/roblox/client/signup/a/e;->b:Lcom/roblox/client/signup/a$d;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/signup/a$d;->a(Lcom/roblox/client/signup/a$e;Ljava/lang/Integer;)V

    return-void
.end method
