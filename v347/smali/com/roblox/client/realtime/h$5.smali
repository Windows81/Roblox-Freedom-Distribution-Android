.class Lcom/roblox/client/realtime/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/realtime/h;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/roblox/client/realtime/h$5;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/roblox/client/realtime/h$5;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->f(Lcom/roblox/client/realtime/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    if-ne p2, v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/roblox/client/realtime/h$5;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/realtime/h$5;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    goto :goto_0
.end method
