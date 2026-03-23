.class Lcom/roblox/client/login/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/d;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/roblox/client/login/d$c;->a:Lcom/roblox/client/login/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/login/d$c;->a:Lcom/roblox/client/login/d;

    invoke-static {v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/login/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lcom/roblox/client/locale/f;

    invoke-direct {v0}, Lcom/roblox/client/locale/f;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/login/d$c;->a:Lcom/roblox/client/login/d;

    invoke-static {v1}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/login/d;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/roblox/client/login/d$c$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/login/d$c$1;-><init>(Lcom/roblox/client/login/d$c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/locale/f;->a(Landroid/content/Context;ZLcom/roblox/client/locale/f$a;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/d$c;->a:Lcom/roblox/client/login/d;

    const-string v1, "AppLocaleSetting"

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
