.class Lcom/roblox/client/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/c;->a(Landroid/content/Context;Lcom/c/a/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a$a;

.field final synthetic b:Lcom/roblox/client/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/c;Lcom/c/a/a/a$a;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/roblox/client/c$3;->b:Lcom/roblox/client/c;

    iput-object p2, p0, Lcom/roblox/client/c$3;->a:Lcom/c/a/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/roblox/client/c$3;->b:Lcom/roblox/client/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/c;->b(Lcom/roblox/client/c;Z)Z

    .line 264
    iget-object v0, p0, Lcom/roblox/client/c$3;->b:Lcom/roblox/client/c;

    invoke-static {v0, p1}, Lcom/roblox/client/c;->c(Lcom/roblox/client/c;Z)Z

    .line 266
    iget-object v0, p0, Lcom/roblox/client/c$3;->a:Lcom/c/a/a/a$a;

    iget-object v1, p0, Lcom/roblox/client/c$3;->b:Lcom/roblox/client/c;

    invoke-static {v1}, Lcom/roblox/client/c;->c(Lcom/roblox/client/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/c/a/a/a$a;->a(Z)V

    .line 267
    return-void
.end method
