.class final Lcom/roblox/client/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/b$b;


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

    .line 127
    iput-object p1, p0, Lcom/roblox/client/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/http/j;)V
    .locals 2

    const-string v0, "AndroidAppSettings"

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p2}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkServerForSettingsChange: Retrieved settings. Length = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p2, p0, Lcom/roblox/client/b$2;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/roblox/client/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "checkServerForSettingsChange: Inform the App that it needs to restart..."

    .line 134
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object p1, Lcom/roblox/client/b$c;->c:Lcom/roblox/client/b$c;

    invoke-static {p1}, Lcom/roblox/client/b;->a(Lcom/roblox/client/b$c;)Lcom/roblox/client/b$c;

    return-void

    :cond_0
    const-string p1, "checkServerForSettingsChange: Failed to get settings."

    .line 139
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    sget-object p1, Lcom/roblox/client/b$c;->a:Lcom/roblox/client/b$c;

    invoke-static {p1}, Lcom/roblox/client/b;->a(Lcom/roblox/client/b$c;)Lcom/roblox/client/b$c;

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {}, Lcom/roblox/client/b;->cC()J

    move-result-wide v0

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/roblox/client/b;->a(J)J

    return-void
.end method
