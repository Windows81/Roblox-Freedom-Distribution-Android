.class Lcom/roblox/client/ActivityNativeMain$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ActivityNativeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$3;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 592
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    const-string p1, "rbx.main"

    const-string v0, "sessionCheckHandler: Got 401 error code from the server. Logout now..."

    .line 593
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$3;->a:Lcom/roblox/client/ActivityNativeMain;

    sget-object v1, Lcom/roblox/client/s/c$e;->c:Lcom/roblox/client/s/c$e;

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/s/c;->a(Landroid/app/Activity;Lcom/roblox/client/s/c$e;)V

    :cond_0
    return-void
.end method
