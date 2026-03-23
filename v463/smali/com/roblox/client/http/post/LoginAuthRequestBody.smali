.class public Lcom/roblox/client/http/post/LoginAuthRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private captchaProvider:Ljava/lang/String;

.field private captchaToken:Ljava/lang/String;

.field private ctype:Ljava/lang/String;

.field private cvalue:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->cvalue:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->ctype:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->password:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->captchaToken:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/roblox/client/http/post/LoginAuthRequestBody;->captchaProvider:Ljava/lang/String;

    return-void
.end method
