.class public Lcom/roblox/platform/http/returntypes/auth/SignUpChallengeResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final challenge:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/auth/SignUpChallengeResponseBody;->challenge:Ljava/lang/String;

    return-void
.end method
