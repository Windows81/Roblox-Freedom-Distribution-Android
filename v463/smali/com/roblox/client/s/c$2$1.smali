.class Lcom/roblox/client/s/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/c$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/s/c$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/c$2;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/roblox/client/s/c$2$1;->a:Lcom/roblox/client/s/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-string p1, "rbx.AppManager"

    const-string v0, "handleLogout: ... Get-Locale API finished."

    .line 474
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p1, p0, Lcom/roblox/client/s/c$2$1;->a:Lcom/roblox/client/s/c$2;

    iget-object p1, p1, Lcom/roblox/client/s/c$2;->b:Lcom/roblox/client/q;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/roblox/client/s/c$2$1;->a:Lcom/roblox/client/s/c$2;

    iget-object p1, p1, Lcom/roblox/client/s/c$2;->b:Lcom/roblox/client/q;

    invoke-virtual {p1}, Lcom/roblox/client/q;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/roblox/client/s/c$2$1;->a:Lcom/roblox/client/s/c$2;

    iget-object p1, p1, Lcom/roblox/client/s/c$2;->b:Lcom/roblox/client/q;

    invoke-virtual {p1}, Lcom/roblox/client/q;->E()V

    .line 478
    :cond_0
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/roblox/client/s/c$2$1;->a:Lcom/roblox/client/s/c$2;

    iget-object v1, v1, Lcom/roblox/client/s/c$2;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/s/e;->a(ILandroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 481
    invoke-static {p1}, Lcom/roblox/client/s/c;->b(Z)Z

    return-void
.end method
