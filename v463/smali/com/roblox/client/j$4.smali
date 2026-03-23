.class Lcom/roblox/client/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/j;->a(Landroid/content/Context;Lcom/b/a/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a$a;

.field final synthetic b:Lcom/roblox/client/j;


# direct methods
.method constructor <init>(Lcom/roblox/client/j;Lcom/b/a/a/a$a;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/roblox/client/j$4;->b:Lcom/roblox/client/j;

    iput-object p2, p0, Lcom/roblox/client/j$4;->a:Lcom/b/a/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/roblox/client/j$4;->b:Lcom/roblox/client/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/j;->b(Lcom/roblox/client/j;Z)Z

    .line 316
    iget-object v0, p0, Lcom/roblox/client/j$4;->b:Lcom/roblox/client/j;

    invoke-static {v0, p1}, Lcom/roblox/client/j;->c(Lcom/roblox/client/j;Z)Z

    .line 318
    iget-object p1, p0, Lcom/roblox/client/j$4;->a:Lcom/b/a/a/a$a;

    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/roblox/client/j$4;->b:Lcom/roblox/client/j;

    invoke-static {v0}, Lcom/roblox/client/j;->c(Lcom/roblox/client/j;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/b/a/a/a$a;->a(Z)V

    :cond_0
    return-void
.end method
