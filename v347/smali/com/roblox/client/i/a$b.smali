.class Lcom/roblox/client/i/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:I

.field c:J

.field d:J

.field e:I


# direct methods
.method constructor <init>(Ljava/lang/String;JJI)V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/roblox/client/i/a$b;->a:Ljava/lang/String;

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/i/a$b;->b:I

    .line 242
    iput-wide p2, p0, Lcom/roblox/client/i/a$b;->c:J

    .line 243
    iput-wide p4, p0, Lcom/roblox/client/i/a$b;->d:J

    .line 244
    iput p6, p0, Lcom/roblox/client/i/a$b;->e:I

    .line 245
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/roblox/client/i/a$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/i/a$b;->b:I

    return-void
.end method

.method a(IJ)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/roblox/client/i/a$b;->b:I

    .line 255
    iput-wide p2, p0, Lcom/roblox/client/i/a$b;->c:J

    .line 256
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/roblox/client/i/a$b;->b:I

    return v0
.end method

.method c()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/roblox/client/i/a$b;->c:J

    return-wide v0
.end method

.method d()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/roblox/client/i/a$b;->d:J

    return-wide v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/roblox/client/i/a$b;->e:I

    return v0
.end method
