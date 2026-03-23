.class public Lcom/roblox/platform/http/postbody/auth/SignUpVoucherPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final challenge:Ljava/lang/String;

.field public final code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/auth/SignUpVoucherPostBody;->challenge:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/auth/SignUpVoucherPostBody;->code:Ljava/lang/String;

    return-void
.end method
