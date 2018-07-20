import sys
import os
import re
import fileinput

bundlename = ''

def replaceText(filepath, title, find, replace):
    try:
        with fileinput.FileInput(filepath, mode='rb', inplace=True, backup='.bak') as file:
            for line in file:
                line = line.decode('utf-8')
                line = re.sub(r"{0}".format(find), replace, line)
                sys.stdout.buffer.write(line.encode('utf-8'))
        print("|\n✅\n|\n|_🎉 {0} Setup Successful\n".format(title))
        try:
            os.remove("{0}.bak".format(filepath))
        except:
            print("{0}.bak a backup file created just in case, could not be deleted. You should delete file manually.")
    except:
        print('''|\n❌\n|\n|_😦 {0} had an error.\n\n ⚠️   File can be recovered by deleting {1} and switching {1}.bak ⇢ {1} ⚠️
        '''.format(title,filepath))

def fixupMainEntitlement():
    print("🛠  📜 Fixing Main Entitlements")
    replaceText('../Freetime.entitlements','Main Entitlement', "group\.com\.whoisryannystrom", "group.com.{0}".format(bundlename))

def fixupWatchPlist():
    print("🛠  ⌚️ Setting Up Watch Plist")
    replaceText('../FreetimeWatch/info.plist','Watch Plist', "com\.whoisryannystrom", "com.{0}".format(bundlename))

def fixupWatchEntitlement():
    print("🛠   📜 Fixing Watch Entitlements")
    replaceText('../FreetimeWatch/FreetimeWatch.entitlements','Watch Entitlements', "group\.com\.whoisryannystrom", "group.com.{0}".format(bundlename))

def fixupWatchExtensionPlist():
    print("🛠  ⌚️ Fixing WatchExtension Plist")
    replaceText('../FreetimeWatch Extension/info.plist','WatchExtension Plist', "com\.whoisryannystrom", "com.{0}".format(bundlename))

def fixupWatchExtensionEntitlement():
    print("🛠  📜 Setting Up WatchExtension Entitlements")
    replaceText('../FreetimeWatch Extension/FreetimeWatch Extension.entitlements','WatchExtension Entitlements', "group\.com\.whoisryannystrom", "group.com.{0}".format(bundlename))    

def fixupTargetsInProject():
    print("🛠  🎯 Setting Up Targets")
    replaceText('../Freetime.xcodeproj/project.pbxproj','Targets', "com\.whoisryannystrom", "com.{0}".format(bundlename))

def request_bundle_name():
    global bundlename 
    bundlename = input("Your orginization identifier (com.<Your orginization identifier>.xxxxx): ")
    correct = input("Is com.{0}.xxxxx correct? [y/n]: ".format(bundlename))
    if(correct != 'y'):
        request_bundle_name()


request_bundle_name()

print('''
\nStarting setup\n
''')

fixupTargetsInProject()
fixupWatchPlist()
fixupWatchExtensionPlist()
fixupMainEntitlement()
fixupWatchEntitlement()
fixupWatchExtensionEntitlement()

print("🏁 Auto-Setup Complete 🏁\n\n ✽ To finish the setup head over to the project folder and switch the TEAM in each target to the team associated with your developer account ✽ \n")


