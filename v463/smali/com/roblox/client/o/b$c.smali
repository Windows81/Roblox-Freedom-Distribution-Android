.class public Lcom/roblox/client/o/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/net/Socket;

.field public d:I

.field final synthetic e:Lcom/roblox/client/o/b;


# direct methods
.method public constructor <init>(Lcom/roblox/client/o/b;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/roblox/client/o/b$c;->e:Lcom/roblox/client/o/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
