.class Lcom/roblox/client/login/d$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/d$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/d",
        "<",
        "Lb/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d$d;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/d$d;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/roblox/client/login/d$d$1;->a:Lcom/roblox/client/login/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p2}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/login/d$d$1;->a:Lcom/roblox/client/login/d$d;

    invoke-virtual {p2}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/login/d$d;->a(Lcom/roblox/client/login/d$d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/login/d$d$1;->a:Lcom/roblox/client/login/d$d;

    iget-object v0, v0, Lcom/roblox/client/login/d$d;->a:Lcom/roblox/client/login/d;

    const-string v1, "ChatRolloutSettings"

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Ljava/lang/String;)V

    .line 151
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :goto_1
    invoke-static {}, Lcom/roblox/client/login/d;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetChatRolloutSettingsTask exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lcom/roblox/client/login/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetChatRolloutSettingsTask null body"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ld/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/roblox/client/login/d$d$1;->a:Lcom/roblox/client/login/d$d;

    iget-object v0, v0, Lcom/roblox/client/login/d$d;->a:Lcom/roblox/client/login/d;

    const-string v1, "ChatRolloutSettings"

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method
