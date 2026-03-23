.class Lcom/roblox/client/signup/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/b;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/roblox/client/signup/b$7;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/roblox/client/signup/b$7;->a:Lcom/roblox/client/signup/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/b;->alertIfNetworkNotConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/b$7;->a:Lcom/roblox/client/signup/b;

    invoke-static {v0}, Lcom/roblox/client/signup/b;->a(Lcom/roblox/client/signup/b;)Lcom/roblox/client/l/a$a;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/f$c;->a:Lcom/roblox/client/signup/f$c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/l/a$a;->a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V

    goto :goto_0
.end method
