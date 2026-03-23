.class final Lcom/roblox/client/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/roblox/client/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p2}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "AndroidAppSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkServerForSettingsChange: Retrieved settings. Length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/roblox/client/b$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/roblox/client/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "AndroidAppSettings"

    const-string v1, "checkServerForSettingsChange: Inform the App that it needs to restart..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/roblox/client/b$d;->c:Lcom/roblox/client/b$d;

    invoke-static {v0}, Lcom/roblox/client/b;->a(Lcom/roblox/client/b$d;)Lcom/roblox/client/b$d;

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "AndroidAppSettings"

    const-string v1, "checkServerForSettingsChange: Failed to get settings."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    sget-object v0, Lcom/roblox/client/b$d;->a:Lcom/roblox/client/b$d;

    invoke-static {v0}, Lcom/roblox/client/b;->a(Lcom/roblox/client/b$d;)Lcom/roblox/client/b$d;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/roblox/client/b;->cd()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/roblox/client/b;->a(J)J

    goto :goto_0
.end method
