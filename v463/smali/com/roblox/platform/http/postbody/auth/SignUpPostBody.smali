.class public Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final birthdate:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final voucher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;->voucher:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;->birthdate:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;->password:Ljava/lang/String;

    return-void
.end method
