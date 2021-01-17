import sys

def is_venv():
    return (hasattr(sys, 'real_prefix') or
            (hasattr(sys, 'base_prefix') and sys.base_prefix != sys.prefix))

if is_venv():
    #print('Yes, is inside virtualenv or venv {} (under {})'.format(sys.prefix, sys.base_prefix))
    sys.exit(1)
else:
    #print('No, is outside virtualenv or venv (under {})'.format(sys.base_prefix))
    sys.exit(0)
