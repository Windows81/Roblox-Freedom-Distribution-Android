.class public Lcom/roblox/client/FragmentGlView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public joinRequestType:I

.field public userId:J

.field public appStarterPlace:Ljava/lang/String;

.field public appStarterScript:Ljava/lang/String;

.field public placeId:J

# PATCH: include baseUrl in game-init arguments.
.field public baseUrl:Ljava/lang/String;

.field public gameId:Ljava/lang/String;

.field public vrEnabled:Z

.field final synthetic i:Lcom/roblox/client/FragmentGlView;


# direct methods
.method public constructor <init>(Lcom/roblox/client/FragmentGlView;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 75
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$a;->i:Lcom/roblox/client/FragmentGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v1, p0, Lcom/roblox/client/FragmentGlView$a;->joinRequestType:I

    .line 79
    iput-wide v2, p0, Lcom/roblox/client/FragmentGlView$a;->userId:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView$a;->appStarterPlace:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView$a;->appStarterScript:Ljava/lang/String;

    .line 86
    iput-wide v2, p0, Lcom/roblox/client/FragmentGlView$a;->placeId:J

    # PATCH: process baseUrl the same was as accessCode.
    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView$a;->baseUrl:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView$a;->gameId:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView$a;->vrEnabled:Z

    return-void
.end method
