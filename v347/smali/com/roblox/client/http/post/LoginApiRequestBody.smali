.class public Lcom/roblox/client/http/post/LoginApiRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private deviceHandle:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/http/post/LoginApiRequestBody;->username:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/roblox/client/http/post/LoginApiRequestBody;->password:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public setDeviceHandle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/roblox/client/http/post/LoginApiRequestBody;->deviceHandle:Ljava/lang/String;

    .line 20
    return-void
.end method
