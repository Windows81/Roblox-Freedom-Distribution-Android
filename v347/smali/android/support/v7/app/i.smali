.class Landroid/support/v7/app/i;
.super Landroid/support/v7/app/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/i$b;,
        Landroid/support/v7/app/i$a;
    }
.end annotation


# instance fields
.field private t:I

.field private u:Z

.field private v:Z

.field private w:Landroid/support/v7/app/i$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/d;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/h;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/d;)V

    .line 45
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/i;->t:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/i;->v:Z

    .line 55
    return-void
.end method

.method private h(I)Z
    .locals 5

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 193
    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v0, 0x30

    .line 195
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 v0, 0x20

    .line 199
    :goto_0
    if-eq v3, v0, :cond_3

    .line 200
    invoke-direct {p0}, Landroid/support/v7/app/i;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 207
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 224
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 230
    :goto_2
    return v0

    .line 195
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 212
    :cond_2
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 213
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 216
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    or-int/2addr v0, v4

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 217
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 221
    invoke-static {v1}, Landroid/support/v7/app/n;->a(Landroid/content/res/Resources;)Z

    goto :goto_1

    .line 230
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private w()I
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Landroid/support/v7/app/i;->t:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/i;->t:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/i;->j()I

    move-result v0

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Landroid/support/v7/app/i$b;

    iget-object v1, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/q;->a(Landroid/content/Context;)Landroid/support/v7/app/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/i$b;-><init>(Landroid/support/v7/app/i;Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    .line 237
    :cond_0
    return-void
.end method

.method private y()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    iget-boolean v2, p0, Landroid/support/v7/app/i;->u:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 251
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    .line 252
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 251
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 255
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    .line 263
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 255
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 259
    const-string v2, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 263
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/support/v7/app/i$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/i$a;-><init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/h;->a(Landroid/os/Bundle;)V

    .line 61
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/i;->t:I

    if-ne v0, v1, :cond_0

    .line 64
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/i;->t:I

    .line 67
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v7/app/h;->c()V

    .line 112
    invoke-virtual {p0}, Landroid/support/v7/app/i;->i()Z

    .line 113
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/app/h;->c(Landroid/os/Bundle;)V

    .line 170
    iget v0, p0, Landroid/support/v7/app/i;->t:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 172
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/i;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    :cond_0
    return-void
.end method

.method d(I)I
    .locals 1

    .prologue
    .line 149
    sparse-switch p1, :sswitch_data_0

    .line 157
    :goto_0
    return p1

    .line 151
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/i;->x()V

    .line 152
    iget-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    invoke-virtual {v0}, Landroid/support/v7/app/i$b;->a()I

    move-result p1

    goto :goto_0

    .line 155
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v7/app/h;->d()V

    .line 120
    iget-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    invoke-virtual {v0}, Landroid/support/v7/app/i$b;->d()V

    .line 123
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v7/app/h;->g()V

    .line 181
    iget-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    invoke-virtual {v0}, Landroid/support/v7/app/i$b;->d()V

    .line 184
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Landroid/support/v7/app/i;->w()I

    move-result v1

    .line 91
    invoke-virtual {p0, v1}, Landroid/support/v7/app/i;->d(I)I

    move-result v2

    .line 92
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 93
    invoke-direct {p0, v2}, Landroid/support/v7/app/i;->h(I)Z

    move-result v0

    .line 96
    :cond_0
    if-nez v1, :cond_1

    .line 98
    invoke-direct {p0}, Landroid/support/v7/app/i;->x()V

    .line 99
    iget-object v1, p0, Landroid/support/v7/app/i;->w:Landroid/support/v7/app/i$b;

    invoke-virtual {v1}, Landroid/support/v7/app/i$b;->c()V

    .line 102
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/i;->u:Z

    .line 103
    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/support/v7/app/i;->v:Z

    return v0
.end method
