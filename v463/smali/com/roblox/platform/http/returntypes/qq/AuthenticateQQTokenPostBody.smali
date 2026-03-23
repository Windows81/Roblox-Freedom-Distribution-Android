.class public Lcom/roblox/platform/http/returntypes/qq/AuthenticateQQTokenPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accessTokenExpiry:I

.field private final openId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/qq/AuthenticateQQTokenPostBody;->openId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/roblox/platform/http/returntypes/qq/AuthenticateQQTokenPostBody;->accessToken:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/roblox/platform/http/returntypes/qq/AuthenticateQQTokenPostBody;->accessTokenExpiry:I

    return-void
.end method
