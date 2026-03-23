.class Lcom/roblox/client/q/b$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/q/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/q/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/q/b;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/roblox/client/q/b$1;->a:Lcom/roblox/client/q/b;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/roblox/client/q/b$1;->a:Lcom/roblox/client/q/b;

    invoke-static {v0}, Lcom/roblox/client/q/b;->a(Lcom/roblox/client/q/b;)Lcom/roblox/client/http/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/roblox/client/q/b$1;->a:Lcom/roblox/client/q/b;

    invoke-static {v0}, Lcom/roblox/client/q/b;->a(Lcom/roblox/client/q/b;)Lcom/roblox/client/http/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/http/m;->a(Lcom/roblox/client/http/j;)V

    .line 40
    :cond_0
    return-void
.end method
