.class public Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final password:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;->username:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;->password:Ljava/lang/String;

    return-void
.end method
