.class public Lcom/roblox/client/ac/b$b;
.super Lcom/roblox/platform/http/returntypes/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ac/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 323
    invoke-direct {p0, p1}, Lcom/roblox/platform/http/returntypes/a;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/roblox/client/ac/b$b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Invalid Error Payload"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
