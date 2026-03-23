.class public Lcom/roblox/client/http/post/LoginAuthRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private ctype:Ljava/lang/String;

.field private cvalue:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->cvalue:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->ctype:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->password:Ljava/lang/String;

    .line 28
    return-void
.end method
