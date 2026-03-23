.class public Lcom/roblox/platform/http/postbody/midas/RetrieveMidasTokenPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field private final mainProductCode:Ljava/lang/String;

.field private final midasPlatformId:Ljava/lang/String;

.field private final midasPlatformKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/midas/RetrieveMidasTokenPostBody;->mainProductCode:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/midas/RetrieveMidasTokenPostBody;->midasPlatformId:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/midas/RetrieveMidasTokenPostBody;->midasPlatformKey:Ljava/lang/String;

    return-void
.end method
