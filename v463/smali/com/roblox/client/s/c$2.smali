.class Lcom/roblox/client/s/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/t/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/c;->a(Landroid/app/Activity;Lcom/roblox/client/s/c$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/roblox/client/q;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/roblox/client/s/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/c;Landroid/app/Activity;Lcom/roblox/client/q;Landroid/os/Bundle;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/roblox/client/s/c$2;->d:Lcom/roblox/client/s/c;

    iput-object p2, p0, Lcom/roblox/client/s/c$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/roblox/client/s/c$2;->b:Lcom/roblox/client/q;

    iput-object p4, p0, Lcom/roblox/client/s/c$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "rbx.AppManager"

    const-string v1, "handleLogout: ... Logout API finished."

    .line 470
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Lcom/roblox/client/locale/i;

    invoke-direct {v0}, Lcom/roblox/client/locale/i;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/s/c$2;->a:Landroid/app/Activity;

    new-instance v2, Lcom/roblox/client/s/c$2$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/s/c$2$1;-><init>(Lcom/roblox/client/s/c$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/i;->a(Landroid/content/Context;Lcom/roblox/client/locale/i$a;)V

    return-void
.end method
