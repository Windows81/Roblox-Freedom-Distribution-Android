.class public Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final deliveryMethod:Ljava/lang/String;

.field public final deliveryTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;->deliveryMethod:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;->deliveryTarget:Ljava/lang/String;

    return-void
.end method
