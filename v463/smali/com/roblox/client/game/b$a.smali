.class public Lcom/roblox/client/game/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/roblox/engine/jni/model/c;

.field b:Lcom/roblox/engine/jni/model/b;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:Z

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/engine/jni/model/b;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/roblox/client/game/b$a;->b:Lcom/roblox/engine/jni/model/b;

    return-object v0
.end method
