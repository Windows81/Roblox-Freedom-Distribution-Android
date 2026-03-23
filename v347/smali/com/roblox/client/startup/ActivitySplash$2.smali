.class Lcom/roblox/client/startup/ActivitySplash$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/ActivitySplash;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/ActivitySplash;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/roblox/client/startup/ActivitySplash$2;->a:Lcom/roblox/client/startup/ActivitySplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 3

    .prologue
    .line 424
    const-string v0, "ActivitySplash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUpgradeUI::onButtonClicked: upgradeClicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notNowClicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz p2, :cond_0

    .line 427
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash$2;->a:Lcom/roblox/client/startup/ActivitySplash;

    invoke-static {v0}, Lcom/roblox/client/startup/ActivitySplash;->b(Lcom/roblox/client/startup/ActivitySplash;)V

    .line 429
    :cond_0
    return-void
.end method
