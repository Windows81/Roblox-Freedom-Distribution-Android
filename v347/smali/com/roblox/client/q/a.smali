.class public Lcom/roblox/client/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/roblox/client/q/a;->a:I

    .line 34
    iput-boolean p2, p0, Lcom/roblox/client/q/a;->b:Z

    .line 35
    iput-boolean p3, p0, Lcom/roblox/client/q/a;->c:Z

    .line 36
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/roblox/client/q/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    const-string v0, "NotificationCount"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    const-string v1, "EmailNotificationEnabled"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    const-string v2, "PasswordNotificationEnabled"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 22
    new-instance v3, Lcom/roblox/client/q/a;

    invoke-direct {v3, v0, v1, v2}, Lcom/roblox/client/q/a;-><init>(IZZ)V

    return-object v3
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/roblox/client/q/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    const-string v0, "Count"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    const-string v1, "EmailNotificationEnabled"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    const-string v2, "PasswordNotificationEnabled"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 29
    new-instance v3, Lcom/roblox/client/q/a;

    invoke-direct {v3, v0, v1, v2}, Lcom/roblox/client/q/a;-><init>(IZZ)V

    return-object v3
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/roblox/client/q/a;->a:I

    .line 40
    iput-boolean v0, p0, Lcom/roblox/client/q/a;->b:Z

    .line 41
    iput-boolean v0, p0, Lcom/roblox/client/q/a;->c:Z

    .line 42
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/roblox/client/q/a;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/roblox/client/q/a;->b:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/roblox/client/q/a;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 58
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v1, p1, Lcom/roblox/client/q/a;

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lcom/roblox/client/q/a;

    .line 63
    iget v1, p1, Lcom/roblox/client/q/a;->a:I

    iget v2, p0, Lcom/roblox/client/q/a;->a:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/roblox/client/q/a;->b:Z

    iget-boolean v2, p0, Lcom/roblox/client/q/a;->b:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/roblox/client/q/a;->c:Z

    iget-boolean v2, p0, Lcom/roblox/client/q/a;->c:Z

    if-eq v1, v2, :cond_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountNotifications{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/q/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasEmailNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/q/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPasswordNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/q/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
